.class final Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;
.super Ljava/lang/Object;
.source "HeaderPrivacyIconsController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/HeaderPrivacyIconsController;->onParentVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$getUiEventLogger$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_CLICK:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$getPrivacyDialogController$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Lcom/android/systemui/privacy/PrivacyDialogController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$getPrivacyChip$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "privacyChip.context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController;->showDialog(Landroid/content/Context;)V

    return-void
.end method
