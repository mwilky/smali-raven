.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsImpl;

.field public final synthetic f$1:Lcom/android/systemui/scrim/ScrimDrawable;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsImpl;Lcom/android/systemui/scrim/ScrimDrawable;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/GlobalActionsImpl;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/scrim/ScrimDrawable;

    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/GlobalActionsImpl;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/scrim/ScrimDrawable;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    iget-object v1, p1, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/systemui/scrim/ScrimDrawable;->setAlpha(I)V

    iget-object v0, p1, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070748

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/scrim/ScrimDrawable;->setAlpha(I)V

    :goto_0
    return-void
.end method
