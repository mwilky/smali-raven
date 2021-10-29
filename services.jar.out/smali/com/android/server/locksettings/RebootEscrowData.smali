.class Lcom/android/server/locksettings/RebootEscrowData;
.super Ljava/lang/Object;
.source "RebootEscrowData.java"


# static fields
.field private static final CURRENT_VERSION:I = 0x2

.field private static final LEGACY_SINGLE_ENCRYPTED_VERSION:I = 0x1


# instance fields
.field private final mBlob:[B

.field private final mKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field private final mSpVersion:B

.field private final mSyntheticPassword:[B


# direct methods
.method private constructor <init>(B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowData;->mBlob:[B

    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowData;->mKey:Lcom/android/server/locksettings/RebootEscrowKey;

    return-void
.end method

.method private static decryptBlobCurrentVersion(Ljavax/crypto/SecretKey;Lcom/android/server/locksettings/RebootEscrowKey;Ljava/io/DataInputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to find wrapper key in keystore, cannot decrypt the escrow data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;
    .locals 6
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

    packed-switch v1, :pswitch_data_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-static {p2, p0, v0}, Lcom/android/server/locksettings/RebootEscrowData;->decryptBlobCurrentVersion(Ljavax/crypto/SecretKey;Lcom/android/server/locksettings/RebootEscrowKey;Ljava/io/DataInputStream;)[B

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/RebootEscrowData;

    invoke-direct {v4, v2, v3, p1, p0}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V

    return-object v4

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/RebootEscrowData;

    invoke-direct {v4, v2, v3, p1, p0}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static fromSyntheticPassword(Lcom/android/server/locksettings/RebootEscrowKey;B[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;
    .locals 6
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

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v4, Lcom/android/server/locksettings/RebootEscrowData;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, p1, p2, v5, p0}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V

    return-object v4
.end method


# virtual methods
.method public getBlob()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mBlob:[B

    return-object v0
.end method

.method public getKey()Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mKey:Lcom/android/server/locksettings/RebootEscrowKey;

    return-object v0
.end method

.method public getSpVersion()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    return v0
.end method

.method public getSyntheticPassword()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    return-object v0
.end method
