.class public final Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
.super Ljava/lang/Object;
.source "StartingSurfaceDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartingWindowRecord"
.end annotation


# instance fields
.field public final mAppToken:Landroid/os/IBinder;

.field public mBGColor:I

.field public mContentView:Landroid/window/SplashScreenView;

.field public final mCreateTime:J

.field public final mDecorView:Landroid/view/View;

.field public mDrawsSystemBarBackgrounds:Z

.field public mSetSplashScreen:Z

.field public mSuggestType:I
    .annotation build Landroid/window/StartingWindowInfo$StartingWindowType;
    .end annotation
.end field

.field public mSystemBarAppearance:I

.field public final mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/view/View;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;I)V
    .locals 0
    .param p4    # I
        .annotation build Landroid/window/StartingWindowInfo$StartingWindowType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mAppToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mDecorView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    if-eqz p3, :cond_0

    iget-object p1, p3, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mBGColor:I

    :cond_0
    iput p4, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mSuggestType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mCreateTime:J

    return-void
.end method
