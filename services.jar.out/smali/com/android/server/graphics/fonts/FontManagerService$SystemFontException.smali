.class Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
.super Landroid/util/AndroidException;
.source "FontManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/graphics/fonts/FontManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemFontException"
.end annotation


# instance fields
.field private final mErrorCode:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return v0
.end method
