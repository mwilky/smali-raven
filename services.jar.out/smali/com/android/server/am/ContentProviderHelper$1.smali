.class public Lcom/android/server/am/ContentProviderHelper$1;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ContentProviderHelper;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic val$providerConnection:Landroid/os/IBinder;

.field public final synthetic val$providerName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$1;->this$0:Lcom/android/server/am/ContentProviderHelper;

    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$1;->val$providerName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/am/ContentProviderHelper$1;->val$providerConnection:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$1;->val$providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t return from getType()."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentProviderHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$1;->this$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$1;->val$providerConnection:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ContentProviderHelper;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    return-void
.end method
