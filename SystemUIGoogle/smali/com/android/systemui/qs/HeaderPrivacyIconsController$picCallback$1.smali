.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;
.super Ljava/lang/Object;
.source "HeaderPrivacyIconsController.kt"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/HeaderPrivacyIconsController;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/privacy/OngoingPrivacyChip;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final update()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$updatePrivacyIconSlots(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$getPrivacyChip$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->getPrivacyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$setChipVisibility(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Z)V

    return-void
.end method


# virtual methods
.method public onFlagLocationChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$getLocationIndicatorsEnabled$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$setLocationIndicatorsEnabled$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->update()V

    :cond_0
    return-void
.end method

.method public onFlagMicCameraChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$getMicCameraIndicatorsEnabled$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$setMicCameraIndicatorsEnabled$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->update()V

    :cond_0
    return-void
.end method

.method public onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "privacyItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-static {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$getPrivacyChip$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->access$setChipVisibility(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Z)V

    return-void
.end method
