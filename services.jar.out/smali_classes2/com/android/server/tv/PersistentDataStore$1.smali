.class public Lcom/android/server/tv/PersistentDataStore$1;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/PersistentDataStore;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/PersistentDataStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore$1;->this$0:Lcom/android/server/tv/PersistentDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore$1;->this$0:Lcom/android/server/tv/PersistentDataStore;

    invoke-static {p0}, Lcom/android/server/tv/PersistentDataStore;->-$$Nest$msave(Lcom/android/server/tv/PersistentDataStore;)V

    return-void
.end method
