.class public final Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt;
.super Ljava/lang/Object;
.source "VariableDateViewController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt$sam$java_lang_Runnable$0;
    }
.end annotation


# static fields
.field private static final EMPTY_FORMAT:Landroid/icu/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt$EMPTY_FORMAT$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt$EMPTY_FORMAT$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt;->EMPTY_FORMAT:Landroid/icu/text/DateFormat;

    return-void
.end method

.method public static final getFormatFromPattern(Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt;->EMPTY_FORMAT:Landroid/icu/text/DateFormat;

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    const-string v0, "format"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getTextForFormat(Ljava/util/Date;Landroid/icu/text/DateFormat;)Ljava/lang/String;
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt;->EMPTY_FORMAT:Landroid/icu/text/DateFormat;

    if-ne p1, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format.format(date)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
