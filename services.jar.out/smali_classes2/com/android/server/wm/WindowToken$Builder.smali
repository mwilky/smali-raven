.class Lcom/android/server/wm/WindowToken$Builder;
.super Ljava/lang/Object;
.source "WindowToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFromClientToken:Z

.field private mOptions:Landroid/os/Bundle;

.field private mOwnerCanManageAppTokens:Z

.field private mPersistOnEmpty:Z

.field private mRoundedCornerOverlay:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mToken:Landroid/os/IBinder;

.field private final mType:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowToken$Builder;->mToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/wm/WindowToken$Builder;->mType:I

    return-void
.end method


# virtual methods
.method build()Lcom/android/server/wm/WindowToken;
    .locals 11

    new-instance v10, Lcom/android/server/wm/WindowToken;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken$Builder;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowToken$Builder;->mToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/wm/WindowToken$Builder;->mType:I

    iget-boolean v4, p0, Lcom/android/server/wm/WindowToken$Builder;->mPersistOnEmpty:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowToken$Builder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v6, p0, Lcom/android/server/wm/WindowToken$Builder;->mOwnerCanManageAppTokens:Z

    iget-boolean v7, p0, Lcom/android/server/wm/WindowToken$Builder;->mRoundedCornerOverlay:Z

    iget-boolean v8, p0, Lcom/android/server/wm/WindowToken$Builder;->mFromClientToken:Z

    iget-object v9, p0, Lcom/android/server/wm/WindowToken$Builder;->mOptions:Landroid/os/Bundle;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    return-object v10
.end method

.method setDisplayContent(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method setFromClientToken(Z)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mFromClientToken:Z

    return-object p0
.end method

.method setOptions(Landroid/os/Bundle;)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method setOwnerCanManageAppTokens(Z)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mOwnerCanManageAppTokens:Z

    return-object p0
.end method

.method setPersistOnEmpty(Z)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mPersistOnEmpty:Z

    return-object p0
.end method

.method setRoundedCornerOverlay(Z)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mRoundedCornerOverlay:Z

    return-object p0
.end method
