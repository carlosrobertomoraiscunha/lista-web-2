package tags;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Carlos
 */
public class FormatCpfCnpjHandler extends SimpleTagSupport {

    private String value;

    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();

        try {
            if (value.length() == 11) {
                out.write(formatCpf(value));
            } else if (value.length() == 14) {
                out.write(formatCnpj(value));
            }
        } catch (java.io.IOException ex) {
            throw new JspException("Error in formatCpfCnpjHandler tag", ex);
        }
    }

    public void setValue(String value) {
        this.value = value;
    }

    private String formatCpf(String cpf) {
        return (cpf.substring(0, 3) + "." + cpf.substring(3, 6) + "." + cpf.substring(6, 9) + "-" + cpf.substring(9, 11));
    }

    private String formatCnpj(String cnpj) {
        return (cnpj.substring(0, 2) + "." + cnpj.substring(2, 5) + "." + cnpj.substring(5, 8) + "/" + cnpj.substring(8, 12) + "-" + cnpj.substring(12, 14));
    }

}
