.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/net/NetworkCapabilities;

.field public final synthetic f$2:Landroid/net/LinkProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/VcnManagementService;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$1:Landroid/net/NetworkCapabilities;

    iput-object p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$2:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$1:Landroid/net/NetworkCapabilities;

    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$2:Landroid/net/LinkProperties;

    invoke-static {v0, v1, p0}, Lcom/android/server/VcnManagementService;->$r8$lambda$Ah98adKs9Sq_mx3WNEd26UUrGLs(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object p0

    return-object p0
.end method
