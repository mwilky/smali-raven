.class public final synthetic Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-static {p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->$r8$lambda$k5b6zfb-HxA0U0GmwgX7Mgx7kQk(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Z

    move-result p0

    return p0
.end method
