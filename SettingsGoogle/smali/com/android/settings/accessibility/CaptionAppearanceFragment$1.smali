.class Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;
.super Ljava/lang/Object;
.source "CaptionAppearanceFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/CaptionAppearanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;


# direct methods
.method public static synthetic $r8$lambda$_TEgIB0qw_WMx9SjWEVYylmTGRw(Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;->lambda$onLayoutChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->-$$Nest$mrefreshPreviewText(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->-$$Nest$fgetmPreviewViewport(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
