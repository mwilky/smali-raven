.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    sget p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->$r8$clinit:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->animateExpandNotificationsPanel()V

    return-void
.end method