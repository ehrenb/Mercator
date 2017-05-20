.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;
.super Ljava/lang/Object;
.source "AppViewInstallDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetState"
.end annotation


# instance fields
.field private buttonState:I

.field private progress:Lcm/aptoide/pt/v8engine/Progress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;I)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->buttonState:I

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;I)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setButtonState(I)V

    return-void
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->setProgress(Lcm/aptoide/pt/v8engine/Progress;)V

    return-void
.end method

.method private setButtonState(I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->buttonState:I

    return-void
.end method

.method private setProgress(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->progress:Lcm/aptoide/pt/v8engine/Progress;

    return-void
.end method


# virtual methods
.method public getButtonState()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->buttonState:I

    return v0
.end method

.method public getProgress()Lcm/aptoide/pt/v8engine/Progress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable$WidgetState;->progress:Lcm/aptoide/pt/v8engine/Progress;

    return-object v0
.end method
