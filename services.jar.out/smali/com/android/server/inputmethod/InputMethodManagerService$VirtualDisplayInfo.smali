.class public final Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VirtualDisplayInfo"
.end annotation


# instance fields
.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method
