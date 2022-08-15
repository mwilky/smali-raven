.class public Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;
.super Ljava/lang/Object;
.source "FontManagerService.java"

# interfaces
.implements Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/graphics/fonts/FontManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FsverityUtilImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFsverity(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public rename(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public setUpFsverity(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;[B)V

    return-void
.end method
