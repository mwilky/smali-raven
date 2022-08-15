.class public Lcom/android/server/notification/ManagedServices$1$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ManagedServices$1;->onBindingDied(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/ManagedServices$1;

.field public final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    iget v0, v0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v1, p0, v0}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    return-void
.end method
