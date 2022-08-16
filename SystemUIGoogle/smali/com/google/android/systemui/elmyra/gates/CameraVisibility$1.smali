.class public final Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;
.super Landroid/app/TaskStackListener;
.source "CameraVisibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/CameraVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
