.class public final Lcom/google/android/setupdesign/util/DynamicColorPalette;
.super Ljava/lang/Object;
.source "DynamicColorPalette.java"


# static fields
.field static colorRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/google/android/setupdesign/R$color;->sud_system_background_surface:I

    sput p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/google/android/setupdesign/R$color;->sud_system_fallback_accent:I

    sput p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    goto :goto_0

    :pswitch_2
    sget p1, Lcom/google/android/setupdesign/R$color;->sud_system_success_done:I

    sput p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    goto :goto_0

    :pswitch_3
    sget p1, Lcom/google/android/setupdesign/R$color;->sud_system_error_warning:I

    sput p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    goto :goto_0

    :pswitch_4
    sget p1, Lcom/google/android/setupdesign/R$color;->sud_system_tertiary_text_inactive:I

    sput p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    goto :goto_0

    :pswitch_5
    sget p1, Lcom/google/android/setupdesign/R$color;->sud_system_secondary_text:I

    sput p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    goto :goto_0

    :pswitch_6
    sget p1, Lcom/google/android/setupdesign/R$color;->sud_system_primary_text:I

    sput p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    goto :goto_0

    :pswitch_7
    sget p1, Lcom/google/android/setupdesign/R$color;->sud_dynamic_color_accent_glif_v3:I

    sput p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/setupdesign/util/DynamicColorPalette;->colorRes:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
