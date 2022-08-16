.class public final Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;
.source "NotifStabilityManager.kt"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DefaultNotifStabilityManager"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isEntryReorderingAllowed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isEveryChangeAllowed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isGroupChangeAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isGroupPruneAllowed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isPipelineRunAllowed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isSectionChangeAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onBeginRun()V
    .locals 0

    return-void
.end method

.method public final onEntryReorderSuppressed()V
    .locals 0

    return-void
.end method
