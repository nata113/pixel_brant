package com.pixelbrand.site.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 				// Indica que esto se va a mapear contra una tabla de BD
@Data  					// Me crea los getter y setter (es lombok)
@NoArgsConstructor 		// Me crea un contructor sin parámetros
@AllArgsConstructor 	// Me crea un constructor con todos los parámetros
public class Persona {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "ID_PERSONA", length = 36, nullable = false, updatable = false, columnDefinition = "VARCHAR(36) NOT NULL")
	private Long id;
	
	@Column(name = "NOMBRE_PERSONA", length = 50, columnDefinition = "VARCHAR(50) NOT NULL")
	private String nombre;
	
}
