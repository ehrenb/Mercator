.class public final Lcm/aptoide/pt/navigation/NavigationManager$Builder;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/navigation/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildWith(Landroid/app/Activity;)Lcm/aptoide/pt/navigation/NavigationManager;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcm/aptoide/pt/navigation/ConcreteNavigationManager;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/navigation/ConcreteNavigationManager;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
