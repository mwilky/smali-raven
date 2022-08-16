.class public Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;
.super Landroid/app/Service;
.source "ElmyraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBinder:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;

.field public final mElmyraServiceListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mElmyraServiceListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;-><init>(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mBinder:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->mBinder:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;

    return-object p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
