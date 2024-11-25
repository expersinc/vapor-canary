from django.http import JsonResponse

def status(request):
    return JsonResponse({"status": "healthy"})

def test(request):
    return JsonResponse({"message": "Test API is running!"})
