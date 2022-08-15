.class public Lcom/android/server/locksettings/SP800Derive;
.super Ljava/lang/Object;
.source "SP800Derive.java"


# instance fields
.field public final mKeyBytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/SP800Derive;->mKeyBytes:[B

    return-void
.end method

.method public static update32(Ljavax/crypto/Mac;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method


# virtual methods
.method public final getMac()Ljavax/crypto/Mac;
    .locals 3

    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lcom/android/server/locksettings/SP800Derive;->mKeyBytes:[B

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public withContext([B[B)[B
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/SP800Derive;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->update([B)V

    array-length p1, p2

    mul-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    const/16 p1, 0x100

    invoke-static {p0, p1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method
