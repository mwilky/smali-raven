.class public final synthetic Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/TelephonyRegistry;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/TelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    invoke-virtual {v0, v1}, Lcom/android/server/TelephonyRegistry;->lambda$checkCoarseLocationAccess$2$TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
