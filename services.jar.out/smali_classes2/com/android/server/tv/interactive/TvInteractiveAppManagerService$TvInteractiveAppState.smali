.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvInteractiveAppState"
.end annotation


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public mIAppNumber:I

.field public mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

.field public mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIAppNumber(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mIAppNumber:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUid(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mUid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;-><init>()V

    return-void
.end method
