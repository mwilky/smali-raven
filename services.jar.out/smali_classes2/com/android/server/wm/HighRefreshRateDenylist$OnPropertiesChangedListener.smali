.class Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;
.super Ljava/lang/Object;
.source "HighRefreshRateDenylist.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HighRefreshRateDenylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPropertiesChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/HighRefreshRateDenylist;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/HighRefreshRateDenylist;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;->this$0:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/HighRefreshRateDenylist;Lcom/android/server/wm/HighRefreshRateDenylist$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateDenylist;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "high_refresh_rate_blacklist"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;->this$0:Lcom/android/server/wm/HighRefreshRateDenylist;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/HighRefreshRateDenylist;->access$100(Lcom/android/server/wm/HighRefreshRateDenylist;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
