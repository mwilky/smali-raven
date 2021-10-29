.class public Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
.super Ljava/lang/Object;
.source "PlatformDecryptionKey.java"


# instance fields
.field private final mGenerationId:I

.field private final mKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(ILjavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mGenerationId:I

    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mKey:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public getGenerationId()I
    .locals 1

    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mGenerationId:I

    return v0
.end method

.method public getKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method
