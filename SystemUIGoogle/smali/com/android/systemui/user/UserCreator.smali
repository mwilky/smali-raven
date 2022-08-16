.class public final Lcom/android/systemui/user/UserCreator;
.super Ljava/lang/Object;
.source "UserCreator.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/UserCreator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/user/UserCreator;->mUserManager:Landroid/os/UserManager;

    return-void
.end method
