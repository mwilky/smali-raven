.class final Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;
.super Lcom/android/server/DropBoxManagerInternal;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DropBoxManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;-><init>(Lcom/android/server/DropBoxManagerService;)V

    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    return-void
.end method
