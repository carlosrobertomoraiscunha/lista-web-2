package tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 *
 * @author Carlos
 */
public class GenerateDistanceTableHandler extends BodyTagSupport {

    private double start;
    private double end;
    private double step;
    private String format;

    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();

        try {
            out.write("<table class=\"table\">");

            if (format.equals("km")) {
                out.write("<tr>");
                out.write("<th>Quilômetros</th>");
                out.write("<th>Milhas</th>");
                out.write("</tr>");
            } else if (format.equals("mi")) {
                out.write("<tr>");
                out.write("<th>Milhas</th>");
                out.write("<th>Quilômetros</th>");
                out.write("</tr>");
            }

            for (double i = start; i <= end; i += step) {
                if (format.equals("km")) {
                    out.write("<tr>");
                    out.write("<td>" + i + "</td>");
                    out.write("<td>" + i / 1.609 + "</td>");
                    out.write("</tr>");
                } else if (format.equals("mi")) {
                    out.write("<tr>");
                    out.write("<td>" + i + "</td>");
                    out.write("<td>" + i * 1.609 + "</td>");
                    out.write("</tr>");
                }
            }

            out.write("</table>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in GenerateDistanceTableHandler tag", ex);
        }

        return SKIP_BODY;
    }

    public void setStart(double start) {
        this.start = start;
    }

    public void setEnd(double end) {
        this.end = end;
    }

    public void setStep(double step) {
        this.step = step;
    }

    public void setFormat(String format) {
        this.format = format;
    }

}
