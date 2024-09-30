
############################################
### Traffic Mananager Call Test
############################################

# while true; do curl http://dustin-appt01.trafficmanager.net; sleep 2; done

output_file="tm_call_results.txt"

# 기존 파일 삭제
rm -f $output_file

echo "Starting 200 requests to http://dustin-appt01.trafficmanager.net" > $output_file

for i in {1..200}; do
  result=$(curl -s -w "\nStatus: %{http_code}" http://dustin-appt01.trafficmanager.net)
  echo -e "\n--- Request $i ---\n$result" >> $output_file
  echo "Request $i completed"
  sleep 1
done


# ### AKS 1 ALB Call Test
# while true; do curl http://gtcpfeejb5b3atd4.fz45.alb.azure.com; sleep 2; done


# ### AKS 2 ALB Call Test
# while true; do curl http://e6dteehaamhrb6aq.fz63.alb.azure.com; sleep 2; done
