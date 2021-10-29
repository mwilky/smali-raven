.class Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "EntryPointController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/EntryPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/google/android/systemui/gamedashboard/EntryPointController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$900(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    return-void
.end method
