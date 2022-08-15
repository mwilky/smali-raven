.class public Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;
.super Lcom/android/server/textservices/TextServicesManagerInternal;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;->this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;->this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-static {p0}, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->-$$Nest$fgetmService(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)Lcom/android/server/textservices/TextServicesManagerService;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->-$$Nest$mgetCurrentSpellCheckerForUser(Lcom/android/server/textservices/TextServicesManagerService;I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method
