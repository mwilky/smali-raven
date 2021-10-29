.class final Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceStateProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReadableFileConfig"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;->mFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/android/server/policy/DeviceStateProviderImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public openRead()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
