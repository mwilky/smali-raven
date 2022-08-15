.class public Lcom/android/server/locksettings/RebootEscrowData;
.super Ljava/lang/Object;
.source "RebootEscrowData.java"


# instance fields
.field public final mBlob:[B

.field public final mKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field public final mSpVersion:B

.field public final mSyntheticPassword:[B


# direct methods
.method public constructor <init>(B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowData;->mBlob:[B

    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowData;->mKey:Lcom/android/server/locksettings/RebootEscrowKey;

    return-void
.end method

.method public static decryptBlobCurrentVersion(Ljavax/crypto/SecretKey;Lcom/android/server/locksettings/RebootEscrowKey;Ljava/io/DataInputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to find wrapper key in keystore, cannot decrypt the escrow data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-static {p2, p0, v0}, Lcom/android/server/locksettings/RebootEscrowData;->decryptBlobCurrentVersion(Ljavax/crypto/SecretKey;Lcom/android/server/locksettings/RebootEscrowKey;Ljava/io/DataInputStream;)[B

    move-result-object p2

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowData;

    invoke-direct {v0, v2, p2, p1, p0}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    move-result-object p2

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowData;

    invoke-direct {v0, v2, p2, p1, p0}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V

    return-object v0
.end method

.method public static fromSyntheticPassword(Lcom/android/server/locksettings/RebootEscrowKey;B[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    new-instance p3, Lcom/android/server/locksettings/RebootEscrowData;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p3, p1, p2, v0, p0}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V

    return-object p3
.end method


# virtual methods
.method public getBlob()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mBlob:[B

    return-object p0
.end method

.method public getSpVersion()B
    .locals 0

    iget-byte p0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    return p0
.end method

.method public getSyntheticPassword()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    return-object p0
.end method
