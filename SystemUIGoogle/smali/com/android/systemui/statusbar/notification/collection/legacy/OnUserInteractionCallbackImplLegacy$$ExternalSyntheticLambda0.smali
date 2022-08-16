.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/OnUserInteractionCallbackImplLegacy;->onDismiss(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
