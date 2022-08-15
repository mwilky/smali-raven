.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/telephony/SubscriptionManager;

.field public final synthetic f$2:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;->f$1:Landroid/telephony/SubscriptionManager;

    iput-object p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;->f$2:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;->f$1:Landroid/telephony/SubscriptionManager;

    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;->f$2:Landroid/os/ParcelUuid;

    invoke-static {v0, v1, p0}, Lcom/android/server/VcnManagementService;->$r8$lambda$4YxvZhzCeVThssiPjGG4HrCE8hw(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V

    return-void
.end method
