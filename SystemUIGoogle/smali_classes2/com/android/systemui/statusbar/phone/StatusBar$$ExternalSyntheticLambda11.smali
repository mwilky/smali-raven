.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyboardShortcutsMessage;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$39RCuhBAYPosOR14bk7N560Ku4o(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$KeyboardShortcutsMessage;)V

    return-void
.end method
