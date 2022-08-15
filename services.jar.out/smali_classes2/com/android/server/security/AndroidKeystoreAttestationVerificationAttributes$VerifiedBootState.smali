.class final enum Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
.super Ljava/lang/Enum;
.source "AndroidKeystoreAttestationVerificationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerifiedBootState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

.field public static final enum FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

.field public static final enum SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

.field public static final enum UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

.field public static final enum VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const-string v1, "VERIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    new-instance v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const-string v3, "SELF_SIGNED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    new-instance v3, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const-string v5, "UNVERIFIED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    new-instance v5, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->$VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .locals 1

    const-class v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .locals 1

    sget-object v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->$VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    invoke-virtual {v0}, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object v0
.end method
