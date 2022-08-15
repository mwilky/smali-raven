.class public Lcom/android/server/power/WakeLockLog$TheLog$1;
.super Ljava/lang/Object;
.source "WakeLockLog.java"

# interfaces
.implements Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WakeLockLog$TheLog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$TheLog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$mremoveTagIndex(Lcom/android/server/power/WakeLockLog$TheLog;I)V

    return-void
.end method
