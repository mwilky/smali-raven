.class public Lcom/android/server/midi/MidiService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field public mMidiService:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/midi/MidiService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/midi/MidiService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    const-string/jumbo v1, "midi"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    invoke-static {p0}, Lcom/android/server/midi/MidiService;->-$$Nest$monUnlockUser(Lcom/android/server/midi/MidiService;)V

    :cond_0
    return-void
.end method
