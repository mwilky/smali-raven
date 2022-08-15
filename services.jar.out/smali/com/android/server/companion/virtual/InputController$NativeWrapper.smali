.class public Lcom/android/server/companion/virtual/InputController$NativeWrapper;
.super Ljava/lang/Object;
.source "InputController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/InputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeUinput(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeCloseUinput(I)Z

    move-result p0

    return p0
.end method

.method public openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public openUinputMouse(Ljava/lang/String;IILjava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public writeButtonEvent(III)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(III)Z

    move-result p0

    return p0
.end method

.method public writeKeyEvent(III)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(III)Z

    move-result p0

    return p0
.end method

.method public writeRelativeEvent(IFF)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(IFF)Z

    move-result p0

    return p0
.end method

.method public writeScrollEvent(IFF)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(IFF)Z

    move-result p0

    return p0
.end method

.method public writeTouchEvent(IIIIFFFF)Z
    .locals 0

    invoke-static/range {p1 .. p8}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(IIIIFFFF)Z

    move-result p0

    return p0
.end method
