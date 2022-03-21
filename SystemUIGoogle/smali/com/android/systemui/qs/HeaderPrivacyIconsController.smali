.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController;
.super Ljava/lang/Object;
.source "HeaderPrivacyIconsController.kt"


# instance fields
.field private final cameraSlot:Ljava/lang/String;

.field private chipVisibilityListener:Lcom/android/systemui/qs/ChipVisibilityListener;

.field private final iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private listening:Z

.field private locationIndicatorsEnabled:Z

.field private final locationSlot:Ljava/lang/String;

.field private micCameraIndicatorsEnabled:Z

.field private final micSlot:Ljava/lang/String;

.field private final picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field private final privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field private privacyChipLogged:Z

.field private final privacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field private final privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/privacy/OngoingPrivacyChip;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V
    .locals 1

    const-string v0, "privacyItemController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyChip"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyDialogController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyLogger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconContainer"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iput-object p2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iput-object p4, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    iput-object p5, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    iput-object p6, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104081e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->cameraSlot:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104082a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micSlot:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040828

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationSlot:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    return-void
.end method

.method public static final synthetic access$getLocationIndicatorsEnabled$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    return p0
.end method

.method public static final synthetic access$getMicCameraIndicatorsEnabled$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    return p0
.end method

.method public static final synthetic access$getPrivacyChip$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method public static final synthetic access$getPrivacyDialogController$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Lcom/android/systemui/privacy/PrivacyDialogController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    return-object p0
.end method

.method public static final synthetic access$getUiEventLogger$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method public static final synthetic access$setChipVisibility(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->setChipVisibility(Z)V

    return-void
.end method

.method public static final synthetic access$setLocationIndicatorsEnabled$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    return-void
.end method

.method public static final synthetic access$setMicCameraIndicatorsEnabled$p(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    return-void
.end method

.method public static final synthetic access$updatePrivacyIconSlots(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->updatePrivacyIconSlots()V

    return-void
.end method

.method private final getChipEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final setChipVisibility(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getChipEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_VIEW:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/qs/ChipVisibilityListener;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/ChipVisibilityListener;->onChipVisibilityRefreshed(Z)V

    :goto_2
    return-void
.end method

.method private final updatePrivacyIconSlots()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getChipEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->cameraSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->cameraSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationSlot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationSlot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->cameraSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationSlot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final onParentInvisible()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/qs/ChipVisibilityListener;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onParentVisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    new-instance v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->setChipVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->updatePrivacyIconSlots()V

    return-void
.end method

.method public final setChipVisibilityListener(Lcom/android/systemui/qs/ChipVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/qs/ChipVisibilityListener;

    return-void
.end method

.method public final startListening()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    return-void
.end method

.method public final stopListening()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    return-void
.end method
