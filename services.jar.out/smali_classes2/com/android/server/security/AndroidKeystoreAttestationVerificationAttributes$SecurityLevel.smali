.class final enum Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
.super Ljava/lang/Enum;
.source "AndroidKeystoreAttestationVerificationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field public static final enum SOFTWARE:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field public static final enum STRONG_BOX:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field public static final enum TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    const-string v1, "SOFTWARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->SOFTWARE:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    new-instance v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    const-string v3, "TRUSTED_ENVIRONMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    new-instance v3, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    const-string v5, "STRONG_BOX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->STRONG_BOX:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->$VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .locals 1

    const-class v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .locals 1

    sget-object v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->$VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    invoke-virtual {v0}, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object v0
.end method
