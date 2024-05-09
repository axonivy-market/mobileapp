package helios.showcase;

import java.util.List;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import ch.ivyteam.log.Logger;
import showcase.Company;
import showcase.Material;


@FacesConverter("materialConverter")
public class MaterialConverter implements Converter {

  @Override
  public Object getAsObject(FacesContext context, UIComponent component, String submittedValue)
      throws ConverterException {
    if (submittedValue == null)
      return null;

    Company com = context.getApplication().evaluateExpressionGet(context, "#{data.company}", Company.class);
    List<Material> materials = com.getElevator().getMaterials();

    for (Material m : materials) {
      if (m.getName().toString().equals(submittedValue)) {
        return m;
      }
    }

    return null;
  }

  @Override
  public String getAsString(FacesContext context, UIComponent component, Object object) throws ConverterException {
    Logger.getLogger(getClass()).debug("Convert " + object);
    if (object != null) {
      return ((Material) object).getName();
    }
    return null;
  }

}
