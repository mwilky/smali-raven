.class final Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService$LightsManagerBinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;",
        ">;"
    }
.end annotation


# instance fields
.field final mPriority:I

.field final mRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation
.end field

.field final mToken:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/lights/LightsService$LightsManagerBinderService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->this$1:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;)I
    .locals 2

    iget v0, p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    iget v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mPriority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->compareTo(Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;)I

    move-result p1

    return p1
.end method

.method setRequest(ILandroid/hardware/lights/LightState;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method
