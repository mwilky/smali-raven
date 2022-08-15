.class public final synthetic Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-static {p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->$r8$lambda$ljWAkCRCnNZ_YG4A_oZb3uYOv9Y(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Landroid/apex/CompressedApexInfo;

    move-result-object p0

    return-object p0
.end method
