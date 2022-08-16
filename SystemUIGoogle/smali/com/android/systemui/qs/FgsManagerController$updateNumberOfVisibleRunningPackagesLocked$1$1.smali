.class public final Lcom/android/systemui/qs/FgsManagerController$updateNumberOfVisibleRunningPackagesLocked$1$1;
.super Ljava/lang/Object;
.source "FgsManagerController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FgsManagerController;->updateNumberOfVisibleRunningPackagesLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $it:Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;

.field public final synthetic $num:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$updateNumberOfVisibleRunningPackagesLocked$1$1;->$it:Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;

    iput p2, p0, Lcom/android/systemui/qs/FgsManagerController$updateNumberOfVisibleRunningPackagesLocked$1$1;->$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$updateNumberOfVisibleRunningPackagesLocked$1$1;->$it:Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;

    iget p0, p0, Lcom/android/systemui/qs/FgsManagerController$updateNumberOfVisibleRunningPackagesLocked$1$1;->$num:I

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;->onNumberOfPackagesChanged(I)V

    return-void
.end method
