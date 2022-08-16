.class final Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CommandRegistry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/commandline/Command;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/commandline/CommandRegistry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;->this$0:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/commandline/PrefsCommand;

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;->this$0:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->context:Landroid/content/Context;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/commandline/PrefsCommand;-><init>()V

    return-object v0
.end method
