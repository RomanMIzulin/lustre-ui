import lustre
import lustre/attribute.{attribute}
import lustre/element.{type Element}
import lustre/element/html
import lustre/ui
import lustre/ui/alert
import lustre/ui/aside
import lustre/ui/breadcrumbs
import lustre/ui/button
import lustre/ui/cluster
import lustre/ui/icon
import lustre/ui/field
import lustre/ui/input

// MAIN ------------------------------------------------------------------------

pub fn main(selector: String) {
  let app = lustre.element(view())
  let assert Ok(_) = lustre.start(app, selector, Nil)

  Nil
}

// VIEW ------------------------------------------------------------------------

fn view() -> Element(Nil) {
  ui.stack(
    [],
    [
      html.p([], [element.text("Buttons:")]),
      ui.cluster(
        [cluster.stretch()],
        [
          ui.button([button.clear()], [element.text("these")]),
          ui.button([button.soft()], [element.text("are")]),
          ui.button([button.solid()], [element.text("some")]),
          ui.button([button.error()], [element.text("buttons")]),
          ui.button([button.success()], [ui.centre([], icon.share([]))]),
        ],
      ),
      html.p([], [element.text("Button groups:")]),
      ui.group(
        [],
        [
          ui.button([], [element.text("these")]),
          ui.button([], [element.text("are")]),
          ui.button([], [element.text("some")]),
          ui.button([], [element.text("buttons")]),
        ],
      ),
      html.p([], [element.text("Tags:")]),
      ui.cluster(
        [],
        [
          ui.tag([], [element.text("erlang")]),
          ui.tag([], [element.text("elixir")]),
          ui.tag(
            [attribute("tabindex", "0")],
            [element.text("gleam"), icon.cross([])],
          ),
          ui.tag([], [element.text("javascript")]),
        ],
      ),
      html.p([], [element.text("Breadcrumbs:")]),
      ui.breadcrumbs(
        [],
        icon.caret_right([]),
        [
          html.span([], [element.text("Implicit active")]),
          html.a([], [element.text("Page A")]),
          html.a([], [element.text("Page B")]),
          html.a([], [element.text("Page C")]),
        ],
      ),
      ui.breadcrumbs(
        [],
        icon.caret_right([]),
        [
          html.span([], [element.text("Explicit .active class")]),
          html.a([], [element.text("Page A")]),
          html.a([breadcrumbs.active()], [element.text("Page B")]),
          html.a([], [element.text("Page C")]),
        ],
      ),
      html.p([], [element.text("Inputs:")]),
      ui.input([]),
      html.p([], [element.text("...with placeholder")]),
      ui.input([input.error(), attribute.placeholder("Hi")]),
      html.p([], [element.text("...disabled")]),
      ui.input([
        input.error(),
        attribute.placeholder("Hi"),
        attribute.disabled(True),
      ]),
      html.p([], [element.text("...clear variant")]),
      ui.input([input.clear(), attribute.placeholder("Hi")]),
      html.p([], [element.text("Fields:")]),
      ui.field(
        [],
        [element.text("Name")],
        ui.input([]),
        [element.text("0/200")],
      ),
      ui.field(
        [field.error(), field.label_centre(), field.message_start()],
        [element.text("Name")],
        ui.input([attribute.disabled(True)]),
        [element.text("0/200")],
      ),
      html.p([], [element.text("Icons:")]),
      ui.cluster(
        [],
        [
          icon.font_style([]),
          icon.font_italic([]),
          icon.font_roman([]),
          icon.font_bold([]),
          icon.font_letter_uppercase([]),
          icon.font_letter_capitalcase([]),
          icon.font_letter_lowercase([]),
          icon.font_letter_case_toggle([]),
          icon.letter_spacing([]),
          icon.align_baseline([]),
          icon.font_size([]),
          icon.font_family([]),
          icon.heading([]),
          icon.text([]),
          icon.text_none([]),
          icon.line_height([]),
          icon.underline([]),
          icon.strikethrough([]),
          icon.overline([]),
          icon.pilcrow([]),
          icon.text_align_left([]),
          icon.text_align_centre([]),
          icon.text_align_right([]),
          icon.text_align_justify([]),
          icon.text_align_top([]),
          icon.text_align_middle([]),
          icon.text_align_bottom([]),
          icon.dash([]),
          icon.arrow_left([]),
          icon.arrow_right([]),
          icon.arrow_up([]),
          icon.arrow_down([]),
          icon.arrow_top_left([]),
          icon.arrow_top_right([]),
          icon.arrow_bottom_left([]),
          icon.arrow_bottom_right([]),
          icon.chevron_down([]),
          icon.chevron_left([]),
          icon.chevron_right([]),
          icon.chevron_up([]),
          icon.double_arrow_down([]),
          icon.double_arrow_left([]),
          icon.double_arrow_right([]),
          icon.double_arrow_up([]),
          icon.thick_arrow_left([]),
          icon.thick_arrow_right([]),
          icon.thick_arrow_up([]),
          icon.thick_arrow_down([]),
          icon.triangle_left([]),
          icon.triangle_right([]),
          icon.triangle_up([]),
          icon.triangle_down([]),
          icon.caret_left([]),
          icon.caret_right([]),
          icon.caret_up([]),
          icon.caret_down([]),
          icon.caret_sort([]),
          icon.width([]),
          icon.height([]),
          icon.size([]),
          icon.move([]),
          icon.all_sides([]),
          icon.frame([]),
          icon.crop([]),
          icon.layers([]),
          icon.stack([]),
          icon.tokens([]),
          icon.component([]),
          icon.component_alt([]),
          icon.symbol([]),
          icon.component_instance([]),
          icon.component_none([]),
          icon.component_boolean([]),
          icon.component_placeholder([]),
          icon.opacity([]),
          icon.blending_mode([]),
          icon.mask_on([]),
          icon.mask_off([]),
          icon.colour_wheel([]),
          icon.shadow([]),
          icon.shadow_none([]),
          icon.shadow_inner([]),
          icon.shadow_outer([]),
          icon.value([]),
          icon.value_none([]),
          icon.zoom_in([]),
          icon.zoom_out([]),
          icon.transparency_grid([]),
          icon.group([]),
          icon.dimensions([]),
          icon.rotate_counter_clockwise([]),
          icon.columns([]),
          icon.rows([]),
          icon.transform([]),
          icon.box_model([]),
          icon.padding([]),
          icon.margin([]),
          icon.angle([]),
          icon.cursor_arrow([]),
          icon.cursor_text([]),
          icon.column_spacing([]),
          icon.row_spacing([]),
          icon.play([]),
          icon.resume([]),
          icon.pause([]),
          icon.stop([]),
          icon.track_previous([]),
          icon.track_next([]),
          icon.loop([]),
          icon.shuffle([]),
          icon.speaker_loud([]),
          icon.speaker_moderate([]),
          icon.speaker_quiet([]),
          icon.speaker_off([]),
          icon.hamburger_menu([]),
          icon.close([]),
          icon.dots_horizontal([]),
          icon.dots_vertical([]),
          icon.plus([]),
          icon.minus([]),
          icon.check([]),
          icon.cross([]),
          icon.check_cirlced([]),
          icon.cross_circled([]),
          icon.plus_circled([]),
          icon.minus_circled([]),
          icon.question_mark([]),
          icon.question_mark_circled([]),
          icon.info_circled([]),
          icon.accessibility([]),
          icon.exclamation_triangle([]),
          icon.share([]),
          icon.share_alt([]),
          icon.external_link([]),
          icon.open_in_new_window([]),
          icon.enter([]),
          icon.exit([]),
          icon.download([]),
          icon.upload([]),
          icon.reset([]),
          icon.reload([]),
          icon.update([]),
          icon.enter_full_screen([]),
          icon.exit_full_screen([]),
          icon.drag_handle_vertical([]),
          icon.drag_handle_horizontal([]),
          icon.drag_handle_dots_alt([]),
          icon.dot([]),
          icon.dot_filled([]),
          icon.commit([]),
          icon.slash([]),
          icon.circle([]),
          icon.circle_backslash([]),
          icon.half([]),
          icon.half_alt([]),
          icon.view_vertical([]),
          icon.view_horizontal([]),
          icon.view_grid([]),
          icon.view_none([]),
          icon.square([]),
          icon.copy([]),
          icon.magnifying_glass([]),
          icon.gear([]),
          icon.bell([]),
          icon.home([]),
          icon.lock_closed([]),
          icon.lock_open([]),
          icon.lock_open_alt([]),
          icon.backpack([]),
          icon.camera([]),
          icon.paper_plane([]),
          icon.rocket([]),
          icon.envelope_closed([]),
          icon.envelope_open([]),
          icon.chat_bubble([]),
          icon.link([]),
          icon.link_none([]),
          icon.link_break([]),
          icon.link_alt([]),
          icon.link_none_alt([]),
          icon.link_break_alt([]),
          icon.trash([]),
          icon.pencil([]),
          icon.pencil_alt([]),
          icon.bookmark([]),
          icon.bookmark_filled([]),
          icon.drawing_pin([]),
          icon.drawing_pin_filled([]),
          icon.sewing_pin([]),
          icon.sewing_pin_filled([]),
          icon.cube([]),
          icon.archive([]),
          icon.crumpled_paper([]),
          icon.mix([]),
          icon.mixer_horizontal([]),
          icon.mixer_vertical([]),
          icon.file([]),
          icon.file_text([]),
          icon.file_plus([]),
          icon.file_minus([]),
          icon.reader([]),
          icon.card_stack([]),
          icon.card_stack_plus([]),
          icon.card_stack_minus([]),
          icon.id_card([]),
          icon.crosshair([]),
          icon.crosshair_alt([]),
          icon.target([]),
          icon.disc([]),
          icon.globe([]),
          icon.sun([]),
          icon.moon([]),
          icon.clock([]),
          icon.timer([]),
          icon.counter_clockwise_clock([]),
          icon.countdown_timer([]),
          icon.stopwatch([]),
          icon.lap_timer([]),
          icon.lightning_bolt([]),
          icon.magic_wand([]),
          icon.face([]),
          icon.person([]),
          icon.eye_open([]),
          icon.eye_none([]),
          icon.eye_closed([]),
          icon.hand([]),
          icon.ruler_horizontal([]),
          icon.ruler_square([]),
          icon.clipboard([]),
          icon.clipboard_copy([]),
          icon.desktop([]),
          icon.laptop([]),
          icon.mobile([]),
          icon.keyboard([]),
          icon.star([]),
          icon.star_filled([]),
          icon.heart([]),
          icon.heart_filled([]),
          icon.scissors([]),
          icon.hobby_knife([]),
          icon.eraser([]),
          icon.cookie([]),
          icon.box([]),
          icon.aspect_ratio([]),
          icon.container([]),
          icon.section([]),
          icon.layout([]),
          icon.grid([]),
          icon.table([]),
          icon.image([]),
          icon.switch([]),
          icon.checkbox([]),
          icon.radiobutton([]),
          icon.avatar([]),
          icon.button([]),
          icon.badge([]),
          icon.input([]),
          icon.slider([]),
          icon.quote([]),
          icon.code([]),
          icon.list_bullet([]),
          icon.dropdown_menu([]),
          icon.video([]),
          icon.pie_chart([]),
          icon.calendar([]),
          icon.dashboard([]),
          icon.activity_log([]),
          icon.bar_chart([]),
          icon.divider_vertical([]),
          icon.divider_horizontal([]),
          icon.modulz_logo([]),
          icon.switches_logo([]),
          icon.figma_logo([]),
          icon.framer_logo([]),
          icon.sketch_logo([]),
          icon.twitter_logo([]),
          icon.iconjar_logo([]),
          icon.github_logo([]),
          icon.vercel_logo([]),
          icon.codesandbox_logo([]),
          icon.notion_logo([]),
          icon.discord_logo([]),
          icon.instagram_logo([]),
          icon.linkedin_logo([]),
          icon.border_all([]),
          icon.border_split([]),
          icon.border_left([]),
          icon.border_right([]),
          icon.border_top([]),
          icon.border_bottom([]),
          icon.corners([]),
          icon.corner_top_left([]),
          icon.corner_top_right([]),
          icon.corner_bottom_left([]),
          icon.corner_bottom_right([]),
          icon.border_style([]),
          icon.border_solid([]),
          icon.border_dashed([]),
          icon.border_dotted([]),
          icon.alignment_top([]),
          icon.alignment_centre_vertically([]),
          icon.alignment_bottom([]),
          icon.stretch_vertically([]),
          icon.alignment_left([]),
          icon.alignment_centre_horizontally([]),
          icon.alignment_right([]),
          icon.stretch_horizontally([]),
          icon.space_between_horizontally([]),
          icon.space_even_horizontally([]),
          icon.space_between_vertically([]),
          icon.space_even_vertically([]),
          icon.pin_left([]),
          icon.pin_right([]),
          icon.pin_top([]),
          icon.pin_bottom([]),
        ],
      ),
      ui.alert(
        [],
        [
          ui.aside(
            [aside.content_last(), aside.align_centre()],
            html.p([], [element.text("This is an alert!")]),
            icon.info_circled([]),
          ),
        ],
      ),
      ui.alert(
        [alert.error(), alert.clear()],
        [
          ui.aside(
            [aside.content_last(), aside.align_centre()],
            html.p([], [element.text("Ooo this one is scary.")]),
            icon.exclamation_triangle([]),
          ),
        ],
      ),
    ],
  )
}
