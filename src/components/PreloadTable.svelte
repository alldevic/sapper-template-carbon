<script>
  import { DataTable, Pagination } from "carbon-components-svelte";

  export let title = "Table title";
  export let description = "Table description";
  export let sortable = true;
  export let rows = [
    {
      id: "a",
      name: "Load Balancer 3",
      status: "Disabled"
    },
    {
      id: "b",
      name: "Load Balancer 1",
      status: "Starting"
    },
    {
      id: "c",
      name: "Load Balancer 2",
      status: "Active"
    }
  ];
  export let headers = [
    { key: "name", value: "Name" },
    { key: "status", value: "Status" }
  ];
  export let rowHeight = "short";
  export let pageSizes = [5, 10, 25, 50];

  let pageSize = pageSizes[0];
  let page;

  $: pageRows = rows.slice(pageSize * (page - 1), pageSize * page);
</script>

<DataTable
  {description}
  {title}
  rows={pageRows}
  {headers}
  {sortable}
  size={rowHeight} />
<Pagination totalItems={rows.length} {pageSizes} bind:page bind:pageSize />
