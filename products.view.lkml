view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
    html:
    {% if {{value}} == "adidas" %}
    <img src="https://bit.ly/2rNld4o" width="90%" height="90%" align="middle"/></div>
    {% elsif {{value}} == "Nike" %}
    <img src="https://bit.ly/1RM5Qm4" width="90%" height="90%" align="middle"/></div>
    {% elsif {{value}} == "Nintendo" %}
    <img src="https://bit.ly/2T1Ayu1" width="90%" height="90%" align="middle"/></div>
    {% elsif {{value}} == "Ray-Ban" %}
    <img src="https://bit.ly/2EwDhrg" width="90%" height="90%" align="middle"/></div>
    {% elsif {{value}} == "Super Mario" %}
    <img src="https://bit.ly/2BsesJW" width="90%" height="90%" align="middle"/></div>
    {% endif %};;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
