package main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import javax.validation.Valid;

@Controller
@RequestMapping("/alumno")
public class AlumnoController {
	
	@RequestMapping("/form")
	public String verFormulario(Model modelo) {
		Alumno alumno = new Alumno();
		
		modelo.addAttribute("alumno", alumno);
		return "AltaAlumno";
	}
	
	@RequestMapping("/procesar")
	public String procesarFormulario(@Valid @ModelAttribute("alumno") Alumno alumno, BindingResult bindingResult) {
		return (bindingResult.hasErrors()) ?  "AltaAlumno" : "VerAlumno";
	}
}
