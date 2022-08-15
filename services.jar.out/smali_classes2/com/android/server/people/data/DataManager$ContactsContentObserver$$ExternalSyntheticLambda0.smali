.class public final synthetic Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;->f$0:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-static {v0, p0, p1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->$r8$lambda$vGsvBtvfc8fCDI9axqzumYPqXkw(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method
