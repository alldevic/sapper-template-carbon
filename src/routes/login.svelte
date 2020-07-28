<script>
  import {
    Form,
    FormGroup,
    FormItem,
    FormLabel,
    Checkbox,
    NumberInput,
    Toggle,
    FileUploader,
    RadioButtonGroup,
    RadioButton,
    Select,
    SelectItem,
    Search,
    TextInput,
    Button,
    TextArea,
    Grid,
    Column,
    Row
  } from "carbon-components-svelte";
</script>

<svelte:head>
  <title>Login page</title>
</svelte:head>

<Grid>
  <Row>
    <Column
      aspectRatio="16x9"
      lg={{ span: 4, offset: 4 }}
      md={{ span: 4, offset: 2 }}>
      <h1>Log in</h1>
      <Form
        on:submit={event => {
          console.log('on:submit', event);
        }}>
        <FormGroup>
          <TextInput id="text-input-1" labelText="Email" required />

          <TextInput
            id="text-input-3"
            type="password"
            labelText="Password"
            invalidText="Your password must be at least 6 characters as well as
            contain at least one uppercase, one lowercase, and one number."
            required
            invalid />
        </FormGroup>
        <Button type="submit">Submit</Button>
      </Form>
    </Column>
  </Row>
</Grid>
