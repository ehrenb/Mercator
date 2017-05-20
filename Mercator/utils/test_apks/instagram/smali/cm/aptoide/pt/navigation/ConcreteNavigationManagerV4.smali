.class Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;
.super Ljava/lang/Object;
.source "ConcreteNavigationManagerV4.java"

# interfaces
.implements Lcm/aptoide/pt/navigation/NavigationManagerV4;


# static fields
.field private static final ENTER_ANIMATION:I = 0x10a0000

.field private static final EXIT_ANIMATION:I = 0x10a0001


# instance fields
.field private final atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/u;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;->atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;->weakReference:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method


# virtual methods
.method public navigateTo(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    const v3, 0x10a0001

    const/high16 v2, 0x10a0000

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;->atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    .line 50
    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity is null in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/y;->a()Landroid/support/v4/app/ad;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/support/v4/app/ad;->a(IIII)Landroid/support/v4/app/ad;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ad;->a(Ljava/lang/String;)Landroid/support/v4/app/ad;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$id;->fragment_placeholder:I

    .line 61
    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/ad;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ad;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/ad;->b()I

    goto :goto_0
.end method

.method public navigateUsing(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/model/v7/Event$Name;->listComments:Lcm/aptoide/pt/model/v7/Event$Name;

    if-ne v0, v1, :cond_1

    .line 33
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    const-string v1, "https://ws75.aptoide.com/api/7/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-interface {v1, v2, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newCommentGridRecyclerFragmentUrl(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 43
    :goto_1
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 44
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 40
    invoke-interface {v0, p1, p3, p2, p4}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_1
.end method
