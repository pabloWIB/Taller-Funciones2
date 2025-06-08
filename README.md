# 🗄️ Taller Funciones SQL 2

Un taller práctico sobre funciones y procedimientos almacenados en SQL, enfocado en el manejo de bases de datos relacionales con ejemplos de países y clientes de América del Sur.

## 📊 Base de Datos

Este proyecto incluye un sistema de gestión de clientes por países con:

- **Tabla `pais`**: Información de países sudamericanos (Argentina, Brasil, Chile, Colombia, Perú)
- **Tabla `cliente`**: Datos de clientes asociados a cada país
- **Relación**: Foreign Key entre cliente y país

## 🛠️ Tecnologías Utilizadas

- **MySQL/MariaDB** - Sistema de gestión de base de datos
- **SQL** - Lenguaje de consultas estructuradas
- **Procedimientos Almacenados** - Funciones automatizadas

## 📁 Estructura del Proyecto

```
Taller-Funciones2/
├── database.sql        # Script principal con todas las consultas
├── schema/
│   ├── tables.sql     # Creación de tablas
│   └── data.sql       # Inserción de datos
├── queries/
│   ├── basic.sql      # Consultas básicas
│   └── advanced.sql   # Consultas avanzadas
└── README.md          # Este archivo
```

## 🚀 Cómo Empezar

1. **Clona el repositorio**
   ```bash
   git clone https://github.com/pabloWIB/Taller-Funciones2.git
   ```

2. **Configura tu base de datos**
   - Instala MySQL/MariaDB
   - Crea una nueva base de datos: `CREATE DATABASE taller_funciones;`

3. **Ejecuta el script**
   ```sql
   USE taller_funciones;
   SOURCE database.sql;
   ```

## 📝 Contenido del Taller

### Tablas Creadas
- **pais**: `id_pais`, `codigo_pais`, `nombre`, `continente`, `poblacion`
- **cliente**: `id_cliente`, `id_pais`, `nombre`, `apellidos`, `direccion`, `telefono`, `email`

### Consultas Incluidas
- ✅ **INNER JOIN**: Unión entre tablas pais y cliente
- ✅ **GROUP BY**: Agrupación de clientes por país
- ✅ **COUNT()**: Conteo de registros
- ✅ **AVG()**: Promedio de datos
- ✅ **WHERE**: Filtros por condiciones

### Procedimientos Almacenados
- `actualizar_clientes()`: Convierte nombres y apellidos a mayúsculas
- `actualizar_correos()`: Convierte emails a mayúsculas

## 🔍 Ejemplos de Consultas

**Contar clientes por país:**
```sql
SELECT p.nombre as pais, COUNT(c.id_cliente) as cantidad_clientes
FROM pais p
INNER JOIN cliente c ON p.id_pais = c.id_pais
GROUP BY p.nombre;
```

**Clientes en Colombia:**
```sql
SELECT COUNT(*) as cantidad_clientes
FROM pais p
INNER JOIN cliente c ON p.id_pais = c.id_pais
WHERE p.nombre = 'Colombia';
```

## ⚙️ Personalización

Para extender el proyecto:

- **Añadir países**: Inserta nuevos registros en la tabla `pais`
- **Más clientes**: Agrega clientes con diferentes `id_pais`
- **Nuevas consultas**: Experimenta con `SUM()`, `MAX()`, `MIN()`
- **Procedimientos**: Crea funciones para validaciones automáticas

## 🎯 Objetivos de Aprendizaje

- Crear y relacionar tablas con Foreign Keys
- Dominar consultas JOIN entre múltiples tablas
- Usar funciones de agregación (COUNT, AVG, SUM)
- Implementar procedimientos almacenados
- Manejar datos de ejemplo realistas

## 💡 Consejos para Principiantes

- **Practica paso a paso**: Ejecuta cada consulta individualmente
- **Usa DESCRIBE**: `DESCRIBE tabla` para ver la estructura
- **Experimenta**: Modifica las consultas para ver diferentes resultados
- **Documenta**: Comenta tus consultas para recordar su propósito

## 📚 Recursos de Aprendizaje

- [MySQL Documentation](https://dev.mysql.com/doc/) - Documentación oficial
- [W3Schools SQL](https://www.w3schools.com/sql/) - Tutoriales básicos
- [SQLBolt](https://sqlbolt.com/) - Ejercicios interactivos
- [DB Fiddle](https://www.db-fiddle.com/) - Prueba consultas online

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Puedes:

1. Añadir más países y clientes
2. Crear consultas más complejas
3. Implementar nuevos procedimientos
4. Mejorar la documentación

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - mira el archivo [LICENSE](LICENSE) para más detalles.

---

⭐ **¡Perfecto para aprender SQL desde cero hasta nivel intermedio!**

**Desarrollado con 💾 para estudiantes de bases de datos**
